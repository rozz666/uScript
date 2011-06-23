require 'Parser'

module UScript

    describe Parser do
        describe 'parse' do
            it "should load the file and parse all classes def and specs" do
                io = mock("IO")
                io.should_receive(:readlines).with(:filename).and_return(:lines)
                classParser = mock("class parser")
                classParser.should_receive(:parseLines).with(:lines).and_return(:ast)
                parser = Parser.new(io, classParser)
                parser.parse(:filename)
            end
        end
    end
end