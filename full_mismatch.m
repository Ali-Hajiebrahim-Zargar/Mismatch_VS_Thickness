close all
clear all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% get inputs %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% insert inputss base on my table
inputss=zeros(5,3);

%substrate matter
inputss(1,1)=9;

%direction of substrate
inputss(1,2)=2;

%matter 1
inputss(2,1)=5;
inputss(2,2)=0;
inputss(2,3)=0;
%interface1
inputss(3,1)=11;
inputss(3,2)=0;
inputss(3,3)=0;
%matter 2
inputss(4,1)=10;
inputss(4,2)=0;
inputss(4,3)=0;
%interface 2
inputss(5,1)=4;
inputss(5,2)=0;
inputss(5,3)=0;
%%%%%%%%%%%%%%%%

temp=300;
% Y=[];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%consatants for determine tempreture %%%%%%%%%%%%%%%%%%%
 if temp==0

      ct=[5.43     0.776      0.515      0.444      0.04      -7.03      -4.2      -4.2      1.7150      1.7150      6.685      6.6850      -8.3000      5.7292      5.7292      5.3749      5.3749      1.7150      4.5750      0          0
          5.65     0.751      0.450      0.371      0.30      -6.35      -5.88     -5.88     1.61        1.61        6.3900     6.3900      -6.78        5.4649      5.4649      5.2191      5.2191      1.6100      4.9000      0          0
          5.65     0.934      0.580      0.489      0.34      -6.92      -8.3431   -2.6569   1.0414      3.6686      8.5914     6.7386      -6.4513      4.4800      5.7839      4.8422      4.8077      1.9546      5.0779      0.421      0.174
          5.65     0.854      0.616      0.550      0.28      -7.49      -7.5273   -1.1627   0.9833      3.5867      7.4833     6.7267      -6.6642      5.1106      5.4965      4.5216      4.9950      1.8780      4.2919      0.421      0.024
          6.08     1.088      0.674      0.570      0.38      -6.67      -9.5381   -2.7219   0.9099      3.7201      7.4099     6.7401      -5.6052      3.0354      5.4389      3.3744      3.9097      1.8398      4.4693      0.421      0.392
          5.43     0.906      0.559      0.470      0.08      -7.40      -8.1124   -2.1976   1.1250      4.115       8.5150     7.1850      -7.4709      4.2771      6.3190      4.6541      5.0950      2.1516      5.1369      0.067      0.174
          5.43     0.955      0.623      0.536      0.1       -8.09      -7.8466   -1.2534   1.3169      4.2831      8.7069     7.4231      -7.4535      5.2451      5.2775      5.2508      4.6388      2.3749      4.8378      0.067      0.024
          5.87     1.127      0.727      0.625      0.11      -7.04      -8.5274   -1.4826   0.8735      4.0465      8.2635     7.0665      -5.3614      2.2265      5.5825      3.4623      4.4814      1.8801      4.2324      0.067      0.392
          6.08     0.910      0.569      0.480      0.82      -6.25      -7.3207   -3.8993   0.8554      2.9146      6.6354     5.9846      -6.1567      4.9601      4.6675      4.9895      4.2180      1.5789      4.1285      0.973      0.179
          6.08     0.990      0.641      0.550      0.65      -6.66      -6.1714   -2.0716   0.9807      3.0163      6.7607     6.1543      -5.6448      4.9121      4.2137      4.3662      3.0739      1.7199      3.6648      0.9730     0.0240     
          6.48     1.080      0.698      0.600      0.81      -6.09      -8.0157   -3.4643   0.6738      2.9162      6.4530     5.9362      -5.5193      3.7880      4.5900      3.5666      3.4048      1.4018      3.8761      0.973      0.392
          5.65     1.206      0.716      0.597      0.43      -8.37      -11.8383  0.0183    1.5072      5.9928      7.5872     8.9928      -6.2163      3.4980      6.3191      2.5891      3.9533      3.0054      5.9942      0.48       0.074
          5.40     1.248      0.814      0.704      0.07      -9.15      0         0         0           0           0          0           0            0           0           0           0           0           0           0          0
          6.08     1.142      0.751      0.651      0.91      -7.17      -9.8150   0.9350    1.4834      5.2666      7.0834     8.2666      -6.5765      5.9827      5.8199      1.3196      0           2.7951      5.4670      0          0
          6.48     1.402      0.974      0.863      0.93      -7.07      0         0         0           0           0          0           0            0           0           0           0           0           0           0          0
          6.48     1.390      0.949      0.837      1.05      -6.88      0         0         0           0           0          0           0            0           0           0           0           0           0           0          0
          0        0          0          0          0         0          0         0         0           0           0          0           0            0           0           0           0           0           0           0          0];
     
     elseif temp==3000
         
      ct=[5.43     0.776      0.515      0.444      0.04      -7.03      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.934      0.580      0.489      0.34      -6.92      -3.53284   -8.11499    0.27772      4.57341      12.33930     4.31241      -6.87653      2.85929      11.09774      6.31619       5.02335       1.33572       5.07596      0.32703      0.1200
          5.65     0.854      0.616      0.550      0.28      -7.49      -3.21537   -9.52462    -0.09711     4.97139      12.05550     3.99445      -8.84261      2.42476      13.20317      5.83246       4.60075       -0.01434      4.25949      0.29145      0.03152
          6.08     1.088      0.674      0.570      0.38      -6.67      -9.57566   -2.21525    0.02402      4.64241      7.44461      4.12648      -5.06858      2.51793      6.18038       3.79662       2.45537       0.84908       4.68538      0.38159      0.37518
          5.43     0.906      0.559      0.470      0.08      -7.40      -8.63163   -1.77800    0.77214      4.17259      11.90050     7.99670      -7.21087      6.12826      6.10944       6.69771       6.33303       1.83129       4.87432      0.05379      0.21636
          5.43     0.955      0.623      0.536      0.1       -8.09      -8.93515   -0.06175    1.13009      4.55816      12.82470     9.41477      -6.68397      9.44286      5.93164       10.08057      4.80831       2.28630       5.12891      0.04600      0.01608
          5.87     1.127      0.727      0.625      0.11      -7.04      -7.91404   -2.76662    0.08442      4.75968      9.88869      7.66966      -6.16976      3.62283      6.90390       4.61375       6.18932       0.75617       4.23370      0.09400      0.54000
          6.08     0.910      0.569      0.480      0.82      -6.25      -7.16208   -4.77036    -0.17071     4.06643      7.32190      3.12330      -6.60955      3.00325      7.78033       4.69778       4.09285       0.58073       4.76520      0.75773      0.15778
          6.08     0.990      0.641      0.550      0.65      -6.66      -4.55720   -4.11800    0.01635      4.87411      9.84286      7.43245      -6.63365      4.58724      8.53398       7.38446       6.29608       1.10706       4.89960      0.70373      0.03062     
          6.48     1.080      0.698      0.600      0.81      -6.09      -7.80905   -2.83599    -0.14734     3.91522      7.43195      3.54540      -4.89637      3.33714      5.60426       4.59953       -2.53756      0.75260       4.48030      0.85794      0.51000
          5.65     1.206      0.716      0.597      0.43      -8.37      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          0        0          0          0          0         0          0          0           0            0            0            0            0             0            0             0             0             0             0            0            0];   
     
     elseif temp==77
       ct=[5.43    0.776      0.515      0.444      0.04      -7.03      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.6482   0.934      0.580      0.489      0.34      -6.92      -9.2664    -4.3504     1.4866       3.2136       8.7826       5.8765       -7.9480       2.7777       10.005        3.6271        7.0071        2.3069        5.0305       0.420        0.174 
          5.6611   0.8544     0.6165     0.5502     0.28      -7.49      -3.21537   -9.52462    -0.09711     4.97139      12.05550     3.99445      -8.84261      2.42476      13.20317      5.83246       4.60075       -0.01434      4.25949      0.29145      0.03152
          6.0537   1.088      0.674      0.570      0.38      -6.67      -9.3562    -3.9611     1.8201       3.1842       7.0432       6.1232       -6.5393       4.3607       7.0849        3.0007        5.4020        2.5491        5.4700       0.420        0.393
          5.4495   0.906      0.559      0.470      0.08      -7.40      -8.63163   -1.77800    0.77214      4.17259      11.90050     7.99670      -7.21087      6.12826      6.10944       6.69771       6.33303       1.83129       4.87432      0.05379      0.21636
          5.4625   0.955      0.623      0.536      0.1       -8.09      -8.93515   -0.06175    1.13009      4.55816      12.82470     9.41477      -6.68397      9.44286      5.93164       10.08057      4.80831       2.28630       5.12891      0.04600      0.01608
          5.868    1.127      0.727      0.625      0.11      -7.04      -7.91404   -2.76662    0.08442      4.75968      9.88869      7.66966      -6.16976      3.62283      6.90390       4.61375       6.18932       0.75617       4.23370      0.09400      0.54000
          6.089    0.91       0.569      0.480      0.82      -6.25      -6.0493    -4.0712     0.91157      2.6352       7.8753       4.8565       -5.7762       4.4761       8.2748        5.0079        6.3813        1.8244        5.3733       0.973        0.174
          6.1355   0.990      0.641      0.550      0.65      -6.66      -4.55720   -4.11800    0.01635      4.87411      9.84286      7.43245      -6.63365      4.58724      8.53398       7.38446       6.29608       1.10706       4.89960      0.70373      0.03062     
          6.4736   1.08       0.698      0.600      0.81      -6.09      -9.3378    -3.3248     0.39352      2.0791       6.6378       5.3807       -5.8320       4.1129       7.5769        3.4448        5.8873        1.2596        4.0026       0.973        0.393
          5.65     1.206      0.716      0.597      0.43      -8.37      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          0        0          0          0          0         0          0          0           0            0            0            0            0             0            0             0             0             0             0            0            0];   
         
     elseif temp==300
      ct=[5.43     0.776      0.515      0.444      0.04      -7.03      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.6532   0.9036     0.5539     0.4638     0.34      -6.92      -7.8974    -3.9809     1.5382       3.3225       7.4514       6.0021       -7.0938       5.6245       8.0023        5.0071        5.7493        2.3818        4.9244       0.420        0.174 
          5.66139  0.9589     0.6067     0.5159     0.28      -7.49      -3.21537   -9.52462    -0.09711     4.97139      12.05550     3.99445      -8.84261      2.42476      13.20317      5.83246       4.60075       -0.01434      4.25949      0.29145      0.03152
          6.0583   1.0868     0.6734     0.5698     0.38      -6.67      -9.2448    -3.6333     1.3697       2.8394       6.8602       6.0756       -6.1866       4.9419       6.7975        3.1176        5.1385        2.1066        5.2173       0.420        0.300
          5.4508   0.8830     0.5418     0.4539     0.08      -7.40      -8.63163   -1.77800    0.77214      4.17259      11.90050     7.99670      -7.21087      6.12826      6.10944       6.69771       6.33303       1.83129       4.87432      0.05379      0.21636
          5.4635   0.8560     0.6552     0.5976     0.1       -8.09      -8.93515   -0.06175    1.13009      4.55816      12.82470     9.41477      -6.68397      9.44286      5.93164       10.08057      4.80831       2.28630       5.12891      0.04600      0.01608
          5.8690   1.1213     0.7491     0.6524     0.11      -7.04      -7.91404   -2.76662    0.08442      4.75968      9.88869      7.66966      -6.16976      3.62283      6.90390       4.61375       6.18932       0.75617       4.23370      0.09400      0.54000
          6.09593  0.9108     0.571      0.483      0.82      -6.25      -5.7211    -3.7936     0.093277     2.9226       7.5896       4.7786       -5.4224       4.6432       7.8682        5.6835        6.4495        1.0457        4.7857       0.818        0.196
          6.1355   0.9901     0.6415     0.551      0.65      -6.66      -4.55720   -4.11800    0.01635      4.87411      9.84286      7.43245      -6.63365      4.58724      8.53398       7.38446       6.29608       1.10706       4.89960      0.70373      0.03062     
          6.47937  1.09312    0.6884     0.5909     0.81      -6.09      -9.1956    -3.0643     -0.14949     3.3187       6.7863       5.7628       -5.5151       1.8721       6.8243        3.0298        5.3791        0.69328       3.7993       0.856        0.417
          5.65     1.206      0.716      0.597      0.43      -8.37      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          0        0          0          0          0         0          0          0           0            0            0            0            0             0            0             0             0             0             0            0            0];   
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% detect type of inputs
[sub,dir,matter1,cation1,anion1,interface1,cation_interface1,anion_interface1,matter2,cation2,anion2,interface2,cation_interface2,anion_interface2]= type_generator(inputss);
%%% generate rows and coloms

[satr1,satr2,satr3,satr4]= satr_gen(inputss(2,1));
x=inputss(2,2);
y=inputss(2,3);
[a1,D1]=energy_generator(x,y,inputss,satr1,satr2,satr3,satr4,ct);
%
[satr1,satr2,satr3,satr4]= satr_gen(inputss(3,1));
x=inputss(3,2);
y=inputss(3,3);
[a2,D2]=energy_generator(x,y,inputss,satr1,satr2,satr3,satr4,ct);
%
[satr1,satr2,satr3,satr4]= satr_gen(inputss(4,1));
x=inputss(4,2);
y=inputss(4,3);
[a3,D3]=energy_generator(x,y,inputss,satr1,satr2,satr3,satr4,ct);
%

[satr1,satr2,satr3,satr4]= satr_gen(inputss(5,1));
x=inputss(5,2);
y=inputss(5,3);
[a4,D4]=energy_generator(x,y,inputss,satr1,satr2,satr3,satr4,ct);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% mismatch calculation %%%%%%%%%%%%%%%%%%%%%%%%%%%%

a_prep1= a1.*(1-D1.*((ct(inputss(1,1),1)./a1)-1));
a_prep2= a2.*(1-D2.*((ct(inputss(1,1),1)./a2)-1));
a_prep3= a3.*(1-D3.*((ct(inputss(1,1),1)./a3)-1));
a_prep4= a4.*(1-D4.*((ct(inputss(1,1),1)./a4)-1));

    if inputss(3,1)== inputss(5,1)
        type=1;
    else
        type=0;
    end
    
if (type)
                         
[m,n]=meshgrid(1:1:40,1:40);
        SL_const= m*a_prep1+0.5*a_prep2+n*a_prep3+0.5* a_prep4;
        a_SL=SL_const./(m+n+1);
        mismacth_Sl=abs( ((ct(inputss(1,1),1)- a_SL)./ct(inputss(1,1),1))*100);

      
         surf(m,n, mismacth_Sl)
%          hold on
%          grid on
    colorbar
         xlabel([matter1,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
         ylabel([matter2,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
         zlabel('Mismatch (%)','FontSize',18,'FontWeight','bold','Color','k')
         title(['For [(',matter1,')m -(',interface1,')-(',matter2,')n -(',interface2,')] with ',sub,' on substrate with direction of ',dir],'FontSize',18)
          axis([1 40 1 40 0 1])
%           colormap hot
         

else
[m,n]=meshgrid(1:1:40,1:40);
        SL_const= (m+0.5).*a_prep1+0.5.*a_prep2+(n+0.5).*a_prep3+0.5.*a_prep4;
        a_SL= SL_const./(m+n+2);
        mismacth_Sl= abs( ((ct(inputss(1,1),1)- a_SL)./ct(inputss(1,1),1))*100);
if abs(mismacth_Sl(m,n)) < 1.573e-14
    mismacth_Sl(m,n)=0;
end
         surf(m,n, mismacth_Sl)
%          hold on 
%          grid on
  colorbar      
         xlabel([matter1,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
         ylabel([matter2,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
         zlabel('Mismatch (%)','FontSize',18,'FontWeight','bold','Color','k')
         title(['For [(',matter1,')m -(',interface1,')-(',matter2,')n -(',interface2,')] with ',sub,' on substrate with direction of ',dir],'FontSize',18)
          axis([1 40 1 40 0 1])
%           colormap hot

 %%%%%%%%%%%% satr=n va sotoon=m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%       
end
determiner= mismacth_Sl;
for i=1:40
for j=1:40
    if abs(determiner(i,j))>1
        determiner(i,j)=0;
    end
end
end
















