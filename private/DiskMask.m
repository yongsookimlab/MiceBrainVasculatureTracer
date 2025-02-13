function [mask]=DiskMask(Rsquare)

R = ceil(sqrt(Rsquare));


xbase = linspace(1,2*R+1,2*R+1) ;

xc = R+1; yc = R+1;
xr = R; yr = R; 

[xm,ym] = ndgrid( xbase , xbase) ;

mask = ( ((xm-xc).^2/Rsquare) + ((ym-yc).^2/Rsquare)  <= 1 ) ;

Rsquare = Rsquare-1;

mask2 = ( ((xm-xc).^2/Rsquare) + ((ym-yc).^2/Rsquare) <= 1 ) ;

mask = mask & ~mask2;






