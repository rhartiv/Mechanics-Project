angle=[125 90 60 45 36.9 30 15 7];
anglematrix=[angle;angle;angle;angle;angle]
t=[0 1.48 1.93 5.58 8.15 12.75 21.68 26.37;0 1.42 1.95 5.32 6.90 12.41 19.61 25.42;0 1.48 2.09 5.92 7.60 11.76 19.03 24.56;0 1.39 1.90 5.30 6.73 11.14 19.5 24.09;0 1.5 1.89 5.41 6.83 11.49 20.12 25.05];


for i=1:(length(angle)-1)
    anglediff(i)=angle(i+1)-angle(i);
end

for i=1:rank(t)
    for ii=1:(length(t)-1)
        angvel(i,ii)=(angle(i+1)-angle(i))/(t(i,ii+1)-t(i,ii));
    end
end


for i=1:rank(angvel)
    for ii=1:(length(angvel)-1)
        angacc(i,ii)=(angvel(i,ii+1)-angvel(i,ii))/(t(i,ii+2)-t(i,ii+1));
    end
end

figure;
for i=1:rank(t)
    scatter(t(i,:),angle)
    hold on
end


t(:,1)=[];
figure;
for i=1:rank(t)
    scatter(t(i,:),angvel(i,:))
    hold on
end


t(:,1)=[];
figure;
for i=1:rank(t)
    scatter(t(i,:),angacc(i,:))
    hold on
end
