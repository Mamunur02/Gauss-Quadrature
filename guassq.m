% This function takes an integer and produces n distint nodes in [-1,1] and
% its corresponding set of weights. It outputs this as a nx2 vector with
% the nodes in the first column and the weights in the second column.
function [x,w] = guassq(n)
A = zeros(n,n); % Generates the nxn zero matrix
for i = 1:n % Nested for loop to fill in the entries for the matrix
    for j = 1:n
        if abs(j-i) == 1
            % This checks aij is in the upper or lower diagonal position of
            % the matrix
            index = max(i,j); 
            % Needs the highest value to correctly work out the value in
            % that position
            A(i,j) = (index-1)/((2*index-3)*(2*index-1))^0.5;
            % Formula for the value of the matrix at that position
        end
    end
end
[V,D] = eig(A);
% Creates a nxn matrix V where the columns are the normalised eigenvalues
% of the tridiagonal symmetric Jacobi matrix. Creates a nxn matrix where
% the diagonal of D are the corresponding eigenvalues.
x = diag(D); % Puts the eigenvalues in a nx1 matrix
w = transpose(2*V(1,:).^2); 
% Puts twice the square of the first component of the corresponding
% eigenvector in a nx1 matrix
end
