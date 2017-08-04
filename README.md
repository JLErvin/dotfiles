# Josh's dotfiles

Welcome to my dotfiles. I am currently running 3 main devices: a MacBook Pro 15' for school, a Razer Blade 2016 for work, and a desktop for my own personal use. Please explore and download what you would like. I post occasionaly to /r/unixporn, where you can find my setup in action. 

Please note that my blade and desktop are both running at somewhat bizarre resolutions. My blade runs at 3200x1800, and my desktop runs at 3440x1440(21:9). Because of this, some configuration files like polybar might not scale well with other resolutions. 


|              | macOS                | blade                 | Desktop                |
:--------------|:---------------------|:----------------------|:-----------------------|
|**os**            | macOS Sierra         | ubuntu 16.04          | ubuntu 16.04           |
|**wm**            | kwm                  | bspwm                 | bspwm                  |
|**cpu**           | intel i7             | intel i7              | amd ryzen 1700x        |
|**gpu**           | amd                  | nvidia 970m           | nvidia 970             |
|**ram**           | 16gb                 | 16gb                  | 32gb                   |
|**terminal**      | iTerm2 Nightly       | urxvt                 | urxvt                  |
|**text editor**   | neovim               | neovim                | neovim                 |
|**browser**       | firefox              | firefox               | firefox                |
|**file-explorer** | ranger               | ranger                | ranger                 |
|**bar**           | ubersicht            | polybar               | polybar                |
|**colorscheme**   | oceanic next         | simplicity            | simplicity             |
|**font**          | sauce code pro       | lemon                 | lemon                  |

Credit for my colorschemes (blade/desktop), goes to dkeg. Go check out his [github](https://github.com/dkeg/crayolo) for some great colorscheme 



# Screenshots

macOS
![Screenshots](http://i.imgur.com/2Y2dogj.jpg)

blade

![Screenshots](http://i.imgur.com/KDtdsHj.jpg)


# Installing bitmap fonts on Ubuntu 16.04

Ubuntu comes with bitmap fonts disabled by default. To install bitmap fonts (specficially in .bdf format) run the following commands:

```
cd /etc/fonts/conf.d/
sudo rm /etc/fonts/conf.d/10*  
sudo rm -rf 70-no-bitmaps.conf 
sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
sudo dpkg-reconfigure fontconfig
```

It may be necessary to restart your computer after for the chanes to take effect


