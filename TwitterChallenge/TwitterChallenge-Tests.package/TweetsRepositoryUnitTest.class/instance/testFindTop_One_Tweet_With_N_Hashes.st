tests
testFindTop_One_Tweet_With_N_Hashes
	| topTenHashes |

	topTenHashes := #('t1' 't2' 't3' 't4' 't5' 't6' 't7' 't8' 't9' 't10').
	tweetsService underlyingTweets: (self tweetsHavingTop_N_Hashes: topTenHashes).
	self assert: (tweetsService hashesTop: 1
	                            usingLastTweetsUpTo: 2000
	                            fromHandler: 'wharever')
	     equals: #(t1).