# led
这是一个openwrt的小练习,目的为:

> 通过页面控制主板上的wan灯和wlan灯的亮灭

备注:

1. 使用主板芯片为MT7620a

2. 我的手上的板子:wan灯对应GPIO为44,wlan灯对应GPIO为72.
不同的板子接线方式有所不同.

3. shell分支使用最简单的bash脚本的方式实现,因为MTK已经给出了内核Register Debug Module和用户空间工具reg.

4. master分支在内核模块中修改寄存器的值.
