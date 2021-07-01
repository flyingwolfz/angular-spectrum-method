# angular-spectrum-method
simple matlab function of angular spectrum method of fast calculation of diffraction with band limitation setting, zero padding setting and so on.

简单的角谱衍射计算matlab函数，可以设置是否加入带限、是否填0等。

function[final] = ASM(shift,cut,direction,bandlimit,quan,mu,z,pitch,lambda)


shift:fftshift 要不要加fftshift

cut:output is set as the same size of input 要不要剪裁为原图大小

direction:direction of the propagation 传播方向

bandlimit:band-limited ASM 是否用带限角谱

quan:input of the complex wave field 输入复振幅

mu:zero padding size(How many times the size of the original complex wave field) 填0为原图大小的几倍

z:distance 距离

pitch: pixel size 像素大小

lambda: wavelength 波长

example，示例:

             finallimit=ASM('shift','cut','forward','limit',p,1,z,pitch,lambda);

             finallimit=ASM('noshift','nocut','backward','nolimit',p,1,z,pitch,lambda);


the band limitation method is from "Band-Limited Angular Spectrum Method for Numerical Simulation of Free-Space Propagation in Far and Near Fields"

带限角谱计算方法来自 "Band-Limited Angular Spectrum Method for Numerical Simulation of Free-Space Propagation in Far and Near Fields"
