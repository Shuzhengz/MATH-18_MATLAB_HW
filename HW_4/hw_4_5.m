% -------------------------------------------------------------------
%  Generated by MATLAB on 18-Nov-2022 18:39:38
%  MATLAB version: 9.13.0.2049777 (R2022b)
% -------------------------------------------------------------------
saveVarsMat = load('hw_4_5.mat');

D = ...
  [1.0000000000000009 0 0 0;
   0 0.672984378812835 0 0;
   0 0 0.75999999999999968 0;
   0 0 0 0.73701562118716446];

L = ...
  [1 0 0 0;
   0 0 0 0;
   0 0 0 0;
   0 0 0 0];

P = ...
  [0.81 0.08 0.16 0.1;
   0.09 0.84 0.05 0.08;
   0.06 0.04 0.74 0.04;
   0.04 0.04 0.05 0.78];

Pinf = ...
  [0.3546511627906983 0.35465116279069836 0.35465116279069675 0.35465116279069747 ...
   ;
   0.32848837209302317 0.32848837209302328 0.32848837209302179 0.32848837209302245 ...
   ;
   0.15697674418604679 0.15697674418604682 0.1569767441860461 0.15697674418604643 ...
   ;
   0.1598837209302327 0.15988372093023276 0.159883720930232 0.15988372093023234 ...
   ];

Q = ...
  [0.66562399858733068 0.76757897579825962 0.54321447625510988 -0.46410240662086327 ...
   ;
   0.61652058885547723 -0.28412412599379988 -0.81482171438266726 -0.12538014809319922 ...
   ;
   0.29462045839111356 -0.56824825198759976 0.1810714920850392 -0.25076029618640944 ...
   ;
   0.30007639280576359 0.0847934021831377 0.090535746042518739 0.8402428509004729 ...
   ];

ans = [0.35465116279069769; 0.32848837209302267; 0.15697674418604654; 0.15988372093023245; ...
       ];

n = saveVarsMat.n; % <1x1 sym> unsupported class

x0 = [0.5106; 0.472; 0.0075; 0.0099];

y = [0.25; 0.25; 0.25; 0.25];

clear saveVarsMat;
