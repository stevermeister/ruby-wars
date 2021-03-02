
$describing = false

class Test

  class Error < StandardError
  end

  @@output = []
  @@method_calls = {}
  @@failed = []
  @@before_blocks = []
  @@after_blocks = []

  class << self

    def expect(passed = nil, message = nil, options = {}, &block)

      if block_given? ? block.call() : !!passed
        success_msg = "Test Passed"
        success_msg += ": " + options[:success_msg] if options[:success_msg]

      else
        message ||= "Something is wrong"

        if $describing
          @@failed << Test::Error.new(message)
        else
          raise Test::Error, (message)
        end
      end

    end

    def describe(message)
      begin
        $describing = true
        @@output << "\n"
        @@output << message
        @@output << "\n"
        yield
      ensure
        $describing = false
        puts @@output.join
        @@output.clear
        @@before_blocks.clear
        @@after_blocks.clear

        raise @@failed.first if @@failed.any?
      end
    end

    def it(message)
      begin
        @@output << "\n"
        @@output << message
        @@output << "\n"
        @@before_blocks.each do |block|
          block.call
        end
        begin
          yield
        ensure
          @@after_blocks.each do |block|
            block.call
          end
        end
      ensure
        @@output << "\n"
      end
    end

    def before(&block)
      @@before_blocks << block
    end

    def after(&block)
      @@after_blocks << block
    end

    def expect_tests_to_pass(message, &block)

      begin
        block.call
      rescue Test::Error => ex
        Test.expect(false, 'Expected test cases to pass: ' + ((message and message.to_s)|| ex.message))
      end
    end

    def expect_tests_to_fail(message, &block)

      passed = false
      begin
        block.call
      rescue Test::Error => ex
        passed = true
      end

      Test.expect(passed, message || 'Expected tests to fail')
    end

    def expect_error(message = nil, &block)

      passed = false
      begin
        block.call
      rescue
        passed = true
      end

      Test.expect(passed, message || 'Expected an error to be raised')
    end

    def expect_no_error(message = nil, &block)
      begin
        block.call
        Test.expect(true)
      rescue Test::Error => test_ex
      rescue => ex
        message ||= 'Unexpected error was raised.'
        Test.expect(false, message + ": " + ex.message)
      end
    end

    def assert_equals(actual, expected, msg = nil, options = {})
      if actual != expected
        msg = msg ? msg + ' -  ' : ''
        message = "\#{msg}\Expected: " + expected.inspect + ", instead got: " + actual.inspect
        Test.expect(false, message)
      else
        options[:success_msg] ||= 'Value == ' + expected.inspect
        Test.expect(true, nil, options)
      end
    end

    def assert_not_equals(actual, expected, msg = nil, options = {})
      if actual == expected
        msg = msg ? msg + ' - ' : ''
        message = "\#{msg}\Not expected: " + actual.inspect
        Test.expect(false, message)
      else
        options[:success_msg] ||= 'Value != ' + expected.inspect
        Test.expect(true, nil, options)
      end
    end

    def random_letter
      ('a'..'z').to_a.sample
    end

    def random_token
      rand(36**6).to_s(36)
    end

    def random_number
      rand(100)
    end

  end
end

def describe(message, &block)
  Test.describe(message, &block)
end

def it(message, &block)
  Test.it(message, &block)
end

def before(&block)
  Test.before(&block)
end

def after(&block)
  Test.after(&block)
end