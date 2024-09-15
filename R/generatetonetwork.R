generatetonetwork <-
function(raw, allindivs=union(as.character(raw$VertexFrom), as.character(raw$VertexTo)))
{
	vel <- generatetonetworkfromvel(generatevertexedgelist(raw, allindivs))
	return(vel)
}

