---
categories:
  - TODO
  - Explainability
date: 2024-04-16
draft: false
links:
  - index.md
readtime: 15
slug: Toy-Models-of-Superposition
authors:
  - <qihang>
---
# Toy Models of Superposition
Links:
- [Paper](https://transformer-circuits.pub/2022/toy_model/index.html)
- [Code](https://github.com/anthropics/toy-models-of-superposition)
- [Colab](https://colab.research.google.com/github/anthropics/toy-models-of-superposition/blob/main/toy_models.ipynb)
<!-- more -->

## Abstract
## Section 7: Superposition in a Privileged Basis
Goal: to explore the simplest toy model which gives us a privileged basis

2 ways to make the model have a privileged basis:

1. **Add an activation function.**
   
2. Apply L1 regularization to the hidden layer.

### **Focus on adding an activation function**
$$
h = ReLU(Wx)
$$

$$
x' = ReLU(W^Th + b)
$$

Adding a ReLU to the hidden layer radically changes the model from an interpretability perspective. The key thing is that while $W$ in our previous model was challenging to interpret (recall that we visualized \( W^TW \) rather than \( W \)), \( W \) in the ReLU hidden layer model can be directly interpreted, since it connects features to basis-aligned neurons.

![img](./assets/DBD7D38D-6C75-4991-8D33-E849693024C0.png)
