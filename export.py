import burningship

b_mod = burningship.burningship()
b_img = b_mod.gen(12000,0.04,1.755,0.03)

import matplotlib.pyplot as plt
plt.imsave('burningship.png', b_img.get())
