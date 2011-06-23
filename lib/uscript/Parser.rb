module UScript

    class Parser
        def initialize(io, classParser)
            @io, @classParser = io, classParser
        end
        def parse(filename)
            lines = @io.readlines(filename)
            @classParser.parseLines lines
        end
    end
end