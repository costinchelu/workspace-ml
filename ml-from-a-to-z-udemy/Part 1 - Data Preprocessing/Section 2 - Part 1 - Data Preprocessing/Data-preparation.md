Data Standardization and Data Normalization are feature scaling techniques used in data preprocessing to bring numerical variables onto a consistent scale, preventing features with larger magnitude ranges from dominating machine learning models (like gradient descent or distance-based algorithms).

### Data Standardization (Z-score Normalization)

Standardization rescales data so that it has a mean ($\mu$) of 0 and a standard deviation ($\sigma$) of 1. It does not bind data to a specific minimum or maximum range and works well when features follow a Gaussian (normal) distribution or contain outliers.

$$z = \frac{x - \mu}{\sigma}$$

- x: Original feature value

- $\mu$: Mean of the feature population/sample $$\mu = \frac{1}{N}\sum_{i=1}^{N}x_i$$

- $\sigma$: Standard deviation of the feature $$\sigma = \sqrt{\frac{1}{N}\sum_{i=1}^{N}(x_i - \mu)^2}$$

### Data Normalization (Min-Max Scaling)

Normalization rescales feature values to a fixed range, typically [0, 1] (or [-1, 1]). It is useful when feature distributions do not follow a Gaussian distribution or when algorithms require bounded ranges (e.g., neural networks or K-Nearest Neighbors). However, it is sensitive to extreme outliers.

Standard Formula (Scaling to [0, 1]):

$$x' = \frac{x - x_{\min}}{x_{\max} - x_{\min}}$$

- $x$: Original feature value
- $x_{\min}$: Minimum value in the feature column
- $x_{\max}$: Maximum value in the feature column

General Formula (Scaling to a custom range [a, b]):

$$x' = a + \frac{(x - x_{\min})(b - a)}{x_{\max} - x_{\min}}$$

Key Comparison

| Feature	              | Standardization	                    | Normalization                  |
|----------------------|------------------------------------|--------------------------------|
| Output Range	         | Unbounded <br>(typically ~[-3, 3])	 | Bounded <br>([0, 1] or [a, b]) |
| Outlier Sensitivity	  | Robust	                             | Highly Sensitive               |
| Assumed Distribution	 | Gaussian / Normal	                  | Arbitrary / Non-Gaussian       |

