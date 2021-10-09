# What is stm_send_example
It is an Example program that can be uploaded to a 68k mac using [stm_send](https://github.com/tscolan/stm_send). It display a picture of a cat.

# Inspiration
I was inspired by the work of @DavidLudwig on [MacRomPicture](https://github.com/DavidLudwig/MacRomPicture). He made a ROM for Mac Plus in C ++ used to display an image on the screen.

As i was using a Mac SE/30, it was necessary to modify the code, which is specific to a Mac Plus. I had to adapt the management of the stack in order to be able to return to "Diagnostic Mode" after execution; it is thus possible to perform several tests without having to press the interrupt button again each time.

Oh, and my cat wanted me to change the picture displayed on the Mac...

# Use
1. you need the [stm_send](https://github.com/tscolan/stm_send) tool and a mac 68k with Diagnostic mode
2. build the binary file
3. upload it with stm_send

# Results
![My cat, Harry](https://www-scolan-net.translate.goog/wp-content/uploads/2021/10/20211008_174800-scaled.jpg)

# References
- [My Original post in French](https://www.scolan.net/utilisation-du-diagnostic-mode-sur-macintosh-se-30/) ([google translated to english](https://www-scolan-net.translate.goog/utilisation-du-diagnostic-mode-sur-macintosh-se-30/?_x_tr_sl=fr&_x_tr_tl=en))
- [stm_send](https://github.com/tscolan/stm_send) tool
- David Ludwig's [MacRomPicture](https://github.com/DavidLudwig/MacRomPicture)
