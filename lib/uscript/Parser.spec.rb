require 'Parser'

module UScript

    describe Parser do
        describe 'parse' do
            it "should load the file and parse all classes def and specs" do
                io = mock("IO")
                io.should_receive(:readlines).with(:filename).and_return(:lines)
                tokenizerFactory = mock("tokenizer factory")
                tokenizerFactory.should_receive(:new).with(:lines).and_return(:tokenizer)
                classParser = mock("class parser")
                classParser.should_receive(:parse).with(:tokenizer).and_return(:ast)
                parser = Parser.new(io, tokenizerFactory, classParser)
                parser.parse(:filename)
            end
        end
    end
end