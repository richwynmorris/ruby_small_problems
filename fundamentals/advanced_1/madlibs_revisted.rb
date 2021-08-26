txt = File.read('mad_libs_txt.txt').split(/[\s]/)

ADJ = ['blue', 'hot', 'yellow', 'sleepy', 'loud', 'sweet']
ADV = ['noisily', 'lazily', 'quickly', 'slowly']
N = ['cat', 'cow', 'cucumber', 'potato', 'Joe Exotic']
V = ['licks', 'jumps', 'hums', 'dances']

txt.each do |word|
	if word.match? (/adjective/)
		word.gsub!(/adjective/, ADJ.sample)
	elsif word.match? (/adverb/)
		word.gsub!(/adverb/, ADV.sample)
	elsif word.match? (/noun/)
		word.gsub!(/noun/, N.sample)
	elsif word.match? (/verb/)
		word.gsub!(/verb/, V.sample)
	else
		word
	end
end

p txt.join(' ')