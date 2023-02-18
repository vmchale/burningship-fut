import burningship

b_mod = burningship.burningship()
b_img = b_mod.gen(12000,0.04,1.755,0.03)

from PIL import Image
im=Image.fromarray(b_img.get()).convert('L')
im.save('burningship.png')
#  plt.gray()
#  plt.imshow(1-b_img.get())
