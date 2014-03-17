require 'rspec'
require_relative '../lib/WordAnalysis.rb'

describe WordAnalysis do
let(:string) { '! This challenge is a challenge @ challenge is !!'}
let(:paragraph) {WordAnalysis.new(string)}

it 'gives the number of each word in a string' do
  expect(paragraph.num_word['challenge']).to eq(3)
end

it 'gives the number of each letter' do
   expect(paragraph.num_letter['e']).to eq(6)
end

it 'gives the number of each symbol' do
   expect(paragraph.num_symbol['!']).to eq(3)
end

it 'gives the three most common words' do
   expect(paragraph.top_three_words[0][0]).to eq('challenge')
end

it 'gives the three most common letters' do
  expect(paragraph.top_three_letters[2][0]).to eq('h')
end

end
