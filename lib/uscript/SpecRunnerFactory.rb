require 'uscript/SpecRunner'
require 'uscript/Parser'
require 'uscript/Tester'
require 'uscript/Tokenizer'

module UScript

    class SpecRunnerFactory
        def create
            classParser = UScript::ClassParser.new
            parser = UScript::Parser.new(IO, UScript::Tokenizer, classParser)
            tester = UScript::Tester.new
            UScript::SpecRunner.new(parser, tester)
        end
    end
end