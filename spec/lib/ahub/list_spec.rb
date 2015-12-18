require "spec_helper"

describe Ahub::List do
  describe 'attributes' do
    # it ''
  end

  # describe '#follower_count' do
  #   it 'returns the count of all followers on a question' do
  #     expect(Ahub::Question).to receive(:get_resources).
  #       with(
  #         url: "#{Ahub::Question.base_url}.json?q=#{URI.encode('test title')}",
  #         headers: Ahub::Question.admin_headers,
  #         klass: Ahub::User
  #       ).and_return( NodeFactory.generate_multi_node_attributes(count: 4) )

  #     question = Ahub::Question.new({id: 123})
  #     expect(question.followers_count).to be(4)
  #   end
  # end
end