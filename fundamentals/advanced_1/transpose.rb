def transpose(matrix)

	c_matrix = Marshal.load(Marshal.dump(matrix))

	c_matrix[0][1], c_matrix[1][0] = c_matrix[1][0], c_matrix[0][1]

	c_matrix[0][2], c_matrix[2][0] = c_matrix[2][0], c_matrix[0][2]

	c_matrix[2][1], c_matrix[1][2] = c_matrix[1][2], c_matrix[2][1]

	c_matrix

end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]