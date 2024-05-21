%% Fig 2
if 0
% phi1=load('./phi1List.dat');
% phi2=load('./phi2List.dat');
% Pl = load('./Data/SP_Pl_Delta=0.dat');
% Pr = load('./Data/SP_Pr_Delta=0.dat');
% g20l =load('./TP_g20l_Delta=0.dat');
% g20r =load('./TP_g20r_Delta=0.dat');
 

fz1=48;fz2=36;lw=2;
rm =1; w_p = 0.45; h_p =0.45; 
% figure(1)

subplot('position',[0.03,0.5,w_p,h_p])                     
imagesc(phi1/pi,phi2/pi,Pl); 
% contour(phi1/pi,phi2/pi,Pl); 
colormap(parula(50));
caxis([0, 1]);
h=colorbar;h.Ticks=0:0.5:1;
set(h,'FontSize',fz2,'LineWidth',2);
set(h,'location','north','position',[0.18 0.96 0.3 0.02],'TickLength',0.02);
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%


subplot('position',[0.55,0.5,w_p,h_p])                     
imagesc(phi1/pi,phi2/pi,log10(g20l));
% % imagesc(phi/pi,d/pi,log10(real(gl20)));
colormap(parula(100));
caxis([-1, 3]);
h=colorbar;
set(h,'location','north','position',[0.7 0.96 0.3 0.02],'TickLength',0.02);
set(h,'FontSize',fz2,'LineWidth',2);%'XColor', [1 1 1],'YColor',[1,1,1]
h.Ticks=[-1,0,1,2,3,4,5,6];
h.TickLabels = [];
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%,'color',[0.871,0.49,0]


subplot('position',[0.12,0.05,0.8,0.35]) 
plot3(-1*ones(1,7),1:7,ones(1,7),'LineWidth',lw,'LineStyle','-','color',[0,0,0]);hold on;hold on;
plot3(phi1/pi,1*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,1*ones(1,length(phi1)),g20l(1,:),'LineWidth',lw,'color',[0,0.447,0.741]);hold on;


plot3(phi1/pi,2*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,2*ones(1,length(phi1)),g20l(13,:),'LineWidth',lw,'color',[0.85,0.325,0.098]);hold on;

plot3(phi1/pi,3*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,3*ones(1,length(phi1)),g20l(51,:),'LineWidth',lw,'color',[0.929,0.694,0.125]);hold on;

plot3(phi1/pi,4*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,4*ones(1,length(phi1)),g20l(101,:),'LineWidth',lw,'color',[0.494,0.188,0.556]);hold on;

plot3(phi1/pi,5*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,5*ones(1,length(phi1)),g20l(125,:),'LineWidth',lw,'color',[0.466,0.674,0.188]);hold on;

plot3(phi1/pi,6*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,6*ones(1,length(phi1)),g20l(151,:),'LineWidth',lw,'color',[0.301,0.745,0.933]);hold on;

plot3(phi1/pi,7*ones(1,length(phi1)),ones(1,length(phi1)),'LineWidth',lw/2,'LineStyle','-','color',[0,0,0]);hold on;
plot3(phi1/pi,7*ones(1,length(phi1)),g20l(188,:),'LineWidth',lw);hold off;%,'color',[0.301,0.745,0.933]

zlim([0.1,720]);
set(gca,'ZScale','log','xtick',-1:0.5:1,'ytick',1:7,'yticklabel',{'0','1/8','1/2','1','5/4','3/2','15/8'},'ztick',[0.1,1,10,1e2,1e3],...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',42)%
view([77,21]);

set(gcf,'PaperSize',[21 21],'PaperPosition',[0.5, 0.5, 20, 20]);
saveas(gcf, 'Fig2-2.pdf');



end


%% Figure 3  g^2 (0) Vs phi and p with theta = pi/8
% phi1=load('./phi1List.dat');
% p=load('./pList.dat'); 
% g20l =load('./TP_g20l.dat');
% g20r =load('./TP_g20r.dat');
if 0

load('./DataFig3/Data_g20_Vs_delta_phi.mat');
fz1=48;fz2=36;lw=2;
rm =1; w_p = 0.42; h_p =0.58;
figure(1)

subplot('position',[0.05,0.1,w_p,h_p])                     
imagesc(phi/pi,delta,log10(abs(gl20)));
colormap(parula(200));
caxis([-2, 3]);
h=colorbar;h.Ticks=-2:1:3;h.TickLabels = [];
set(h,'FontSize',fz2,'LineWidth',2);
set(h,'location','north','position',[0.168 0.70 0.3 0.02],'TickLength',0.02);
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'XTickLabels','','ytick',-1:0.5:1,'YTickLabels','','TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%


subplot('position',[0.58,0.42 ,w_p,0.3]) 
line(delta,gl20(:,131),'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
% line(delta,gl20(:,1251),'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
% line(delta,gr20(:,1001),'LineStyle','--','color',[0., 0.5, 0.],'LineWidth',3);
line(delta,gl20(:,1871),'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3);
set(gca,'YScale','log'); box on;ylim([3e-4,7e2]); 
set(gca,'xtick',-1:0.5:1,'XTickLabels','','ytick',[1e-4,1e-3,1e-2,1e-1,1,1e1,1e2,1e3],'YTickLabels','',...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%,'color',[0.871,0.49,0]

subplot('position',[0.58,0.1,w_p,0.3]) 
line(phi/pi,gl20(401,:),'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
line(phi/pi,gr20(401,:),'LineStyle',':','color',[0.0, 0., 0.7],'LineWidth',3);
%line(phi/pi,gl20(601,:),'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3.5);
% line(phi/pi,gl20(651,:),'LineStyle',':','color',[0.5, 0.5, 0.5],'LineWidth',3.5);
set(gca,'YScale','log'); ylim([9e-5,4e2]),box on;
set(gca,'xtick',-1:0.5:1,'XTickLabels','','ytick',[1e-4,1e-3,1e-2,1e-1,1,1e1,1e2],'YTickLabels','',...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%,'color',[0.871,0.49,0],'xaxisLocation','top'

set(gcf,'PaperSize',[21 16],'PaperPosition',[0.5, 0.5, 20, 15]);
saveas(gcf, 'Fig3.pdf');

end

%% Fig 4
% if 0
load('./DataFig4/DataFig4.mat');
figure(1)

fz1=48;fz2=36;lw=2;
rm =1; w_p = 0.4; h_p =0.42;

subplot('position',[0.03,0.57,w_p,h_p])                     
line(t,g2tl1,'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
line(t,g2tr1,'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3);
box on;xlim([0,20]); ylim([0,3.4]); %set(gca,'YScale','log'); 
set(gca,'xtick',0:5:20,'ytick',0:1:4,...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)
%,'color',[0.871,0.49,0],'XTickLabels','','YTickLabels',''


subplot('position',[0.55,0.57 ,w_p,h_p]) 
% line(t,g2tl2,'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
% line(t,g2tr2,'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3);
% box on;xlim([0,20]); ylim([4e-4,27]); set(gca,'YScale','log'); 
% set(gca,'xtick',0:5:20,'ytick',[1e-3,1e-2,1e-1,1e0,1e1],...
%     'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%,'color',[0.871,0.49,0]

[hAx,hL1,hL2] = plotyy(t,g2tl2,t,g2tr2); box on;
set(gca,'xtick',0:10:40,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)
set(hAx(1),'ylim',[0,1.35],'ytick',0:0.5:1,'LineWidth',2,'FontSize',fz1,'YColor',[0.7,0,0],'TickLength',[0.02 0.02]);
set(hAx(2),'ylim',[0,18],'ytick',0:5:25,'LineWidth',2,'FontSize',fz1,'YColor',[0.0,0,0.7],'TickLength',[0.02 0.02]);
set(hL1,'LineStyle', '-','LineWidth',3,'color', [0.7, 0, 0.0]);
set(hL2,'LineStyle', ':','LineWidth',3,'color', [0.0, 0, 0.7]);



subplot('position',[0.03,0.03,w_p,h_p]) 
line(t1,g2tl3,'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
line(t1,g2tr3,'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3);
box on;xlim([0,15]); ylim([0,1]); %set(gca,'YScale','log'); 
set(gca,'xtick',0:5:20,'ytick',0:0.2:2,...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)

subplot('position',[0.55,0.03,w_p,h_p]) 
line(t1,g2tl4,'LineStyle','-','color',[0.7, 0, 0],'LineWidth',3);
line(t1,g2tr4,'LineStyle',':','color',[0, 0, 0.7],'LineWidth',3);
box on;xlim([0,10]); ylim([0,1]); %set(gca,'YScale','log'); 
set(gca,'xtick',0:5:20,'ytick',0:0.2:2,...
    'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)

set(gcf,'PaperSize',[21 16],'PaperPosition',[0.5, 0.5, 20, 15]);
saveas(gcf, 'Fig4.pdf');


% end
%% Fig S1
if 0
phi1=load('./phi1List.dat');
phi2=load('./phi2List.dat');
R = load('./Data/SP_Reflection_Delta=0.dat')
Tl = load('./Data/SP_TransmissionL_Delta=0.dat');
Tr = load('./Data/SP_TransmissionR_Delta=0.dat');

fz1=48;fz2=36;lw=2;
rm =1; w_p = 0.42; h_p =0.45; 
figure(1)

subplot('position',[0.03,0.1,w_p,h_p])                     
imagesc(phi1/pi,phi2/pi,R); 
% contour(phi1/pi,phi2/pi,Pl); 
colormap(parula(50));
caxis([0, 1]);
h=colorbar;h.Ticks=0:0.5:1;
set(h,'location','north','position',[0.15 0.56 0.3 0.02],'TickLength',0.02);
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz2)%


subplot('position',[0.58,0.1,w_p,h_p])  
imagesc(phi1/pi,phi2/pi,T); 
% contour(phi1/pi,phi2/pi,Pl); 
colormap(parula(50));
caxis([0, 1]);
h=colorbar;h.Ticks=0:0.5:1;
set(h,'location','north','position',[0.15 0.56 0.3 0.02],'TickLength',0.02);
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz2)%



set(gcf,'PaperSize',[21 16],'PaperPosition',[0.5, 0.5, 20, 15]);
saveas(gcf, 'S1.pdf');

end

%% Fig S2
if 0
% load('./DataFigS2/Datta_FigS2.mat');
 

fz1=48;fz2=36;lw=3;
rm =1; w_p = 0.44; h_p =0.45; 
% figure(1)

subplot('position',[0.035,0.5,w_p,h_p])                     
line(phi/pi,Pl,'LineStyle','-','color',[0.7,0,0],'LineWidth',lw);
line(phi/pi,Pr,'LineStyle','--','color',[0,0,0.7],'LineWidth',lw);
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%
box on;

subplot('position',[0.555,0.5,0.42,h_p])                     
imagesc(phi1/pi,theta/pi,g20l); 
colormap(parula(50));
caxis([0, 0.8]);
h=colorbar;h.Ticks=0:0.2:0.8;
set(h,'FontSize',fz2,'LineWidth',2);
set(h,'location','east','position',[0.979 0.525 0.02 0.4],'TickLength',0.02);
set(gca,'Visible','on','Ydir','normal');
set(gca,'xtick',-1:0.5:1,'ytick',0:0.5:2,'TickLength',[0.02 0.02],'Linewidth',2,'FontSize',fz1)%



set(gcf,'PaperSize',[21 21],'PaperPosition',[0.5, 0.5, 20, 20]);
saveas(gcf, 'FigS2.pdf');



end
