function [test_error] = testError(X, y, Xtest, ytest, lambda_vec, error_val)

m_test = length(ytest);
[val, min_row] = min(error_val);
lambda = lambda_vec(min_row);
[theta] = trainLinearReg(X, y, lambda);
test_error = sum(((Xtest * theta) - ytest) .^ 2) / (2 * m_test);