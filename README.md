# README 

### TASK 1
Initialized a matrix of size `photo` filled with zeros, converted it to type `double`. Applied the `svd` function on the matrix `photo`, then reduced the resulting matrices `U`, `S`, and `V` up to index `k`. Multiplied them to obtain the requested matrix `new_X`.

### TASK 2
Initialized a matrix of size `photo` filled with zeros, converted it to type `double`. Used the `mean` function to calculate the average of each row, then stored the matrix in `normalized_photo` by subtracting the mean. Applied the `svd` function and then performed operations explained in the assignment (building matrix `W` from the first `pcs` columns of `V`, etc.).

### TASK 3
Initialized a matrix of size `photo` filled with zeros, converted it to type `double`. Used the `mean` function to calculate the average of each row, then stored the matrix in `normalized_photo` by subtracting the mean. Calculated the eigenvalues and eigenvectors of the covariance matrix using the `eig` function. Sorted the eigenvalues in descending order using the `sort` function.

### TASK 4
#### FUNCTION: `prepare_data`
Loaded data using the `load` function, then stored the first `no_train_images` rows in the matrix `train_mat`.

#### FUNCTION: `visualize_image`
Initialized the final matrix, then read the row from the training matrix corresponding to the `number` index, transformed it into a 28x28 matrix, and transposed it.

#### FUNCTION: `magic_with_pca`
Initialized working matrices (e.g., train, miu). Calculated the covariance matrix and obtained the eigenvalues and eigenvectors. Created the `data` matrix as explained in the TODO.

#### FUNCTION: `prepare_photo`
Inverted the pixels of the image `im`, then transposed the image and transformed it into a row vector.

#### FUNCTION: `KNN`
Calculated the Euclidean distance between each row and the test vector, sorted the distances in ascending order, and retained the first `k` values.

#### FUNCTION: `classify_image`
Converted the matrix `im` to type `double`, applied the PCA algorithm on the data, and multiplied by matrix `Vk` to change the basis.
