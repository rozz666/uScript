module UScript

    class ClassParser
        def parse(tokenizer)
        end
    end
    
    class Parser
        def initialize(io, tokenizerFactory, classParser)
            @io, @tokenizerFactory, @classParser = io, tokenizerFactory, classParser
        end
        def parse(filename)
            lines = @io.readlines(filename)
            tokenizer = @tokenizerFactory.new(lines)
            @classParser.parse tokenizer
        end
    end
end