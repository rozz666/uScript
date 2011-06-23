module UScript

    class SpecRunner
        def initialize(parser, tester)
            @parser, @tester = parser, tester
        end
        def run(filename)
            ast = @parser.parse(filename)
            @tester.testAll(ast)
        end
    end
end