input =
<<eos
3
7 4
2 4 6
8 5 9 3
eos
input2=
<<eos
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
eos

def numberPyramidStringTo2DArray(input)
  retval = input

  # "01 02 03\n" -> "[01 02 03],"
  retval.gsub! /(.*)\n/, '[\1\2],'
  # "[01 02 03]," -> "[01,02,03],"
  retval.gsub! /(\d)\s/, '\1,'
  # [01,02,03]," -> [1,2,3],"
  retval.gsub! /0(\d)/, '\1'
  retval = "[#{retval}]";

  return eval retval
end

def getAdjacentIndexes(pair = [0,0])
  retlist = []

  i,j = pair

  retlist << [i+1, j]
  retlist << [i+1, j+1]

  return retlist
end

def getAdjacents(input, pair =[0,0])
  i,j = pair
  if i < 0 or i >= (input.count - 1) or j < 0 or j >= input[i].count
    return []
  else
    return getAdjacentIndexes(pair)
  end
end

def getValue(array, pair = [0,0])
  return array[pair[0]][pair[1]]
end


# Turn triangle numbers into a jagged 2D array
#[3]
#[3,7] [3,4]
#[3,7,2] [3,7,4] [3,4,2] [3,4,4] [3,4,6]
#[3,7,2,8] [3,7,2,5] [3,7,4,8] etc...
tri = numberPyramidStringTo2DArray(input2)
nodes = [ [[0,0]] ] # root node

# Traverse the tree by following adjacent nodes and building up paths
# in a list.
while true

  nextNodes = []
  nodes.each_index do |i|

    adjacents = getAdjacents(tri, nodes[i].last)

    break if adjacents.empty?

    adjacents.map! { |adj| nodes[i] + [adj] }
    nextNodes += adjacents;

  end

  break if nextNodes.empty?

  nodes = nextNodes
end

# Turn all of the lists of nodes into lists of values
nodes.map! {|list| list.map! {|i|getValue(tri,i)}}

# Sum each of the lists of values
nodes.map! {|vals| vals.inject(&:+)}

# Report the largest
puts "#{nodes.max}"
