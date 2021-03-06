require 'SpecRunner'

module UScript

    describe SpecRunner do
        describe "run" do
            it "parses a file and executes all tests" do
                parser = mock("parser")
                tester = mock("tester")
                runner = SpecRunner.new(parser, tester)
                parser.should_receive(:parse).with(:filename).and_return(:ast)
                tester.should_receive(:testAll).with(:ast)
                runner.run(:filename)
            end
        end
    end
    
end