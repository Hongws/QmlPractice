# QmlPractice
qml作用  
比Qwidget的界面更美观、更又立体感(动画、模型和视图、粒子效果和着色效果)  
Qt公司目前重心在qml上，qt6的版本中qml变动不少  

Questions:  
2020中旬  
用qwidget中QWebEngineView加载的网页，发布没问题，但只能加载一级网页，加载二级的话是计算机内存叠加...直到内存爆了  
在win10下，用qml中QtWebEngine加载网页，发布出现网页模块加载不了，但release下内存会自动释放  
针对此问题测试过  
前者可能是由于qt版本导致，我用qt5.13.1有此问题，在qtcn上有人用qt5.8的也有此问题，但有人用qt其它版本的没有此问题(可能是qt5.9可能是qt5.12,也有可能是其它版本)  
后者尝试在虚拟机win7中安装了qt和vs2017搭的msvc2017环境运行没问题，发布就有问题；不加载QtWebEngine模块，其它qml程序发布就没有问题出现；此前，用depends和processexplorer查过相关缺少的库（怀疑是qt版本问题或者是qt的bug）  

学习qml，用到的一些例子

FirstBook: Qt Quick核心编程

