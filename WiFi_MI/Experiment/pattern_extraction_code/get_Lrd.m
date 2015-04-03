function lrd = get_Lrd(index, k, curve, dis_all)
% -- index ��ʾ����������
% -- k��ʾ����ڵĸ��� 
% -- curve��ʾ���ߣ���һ�б�ʾ�����꣬�ڶ��б�ʾ������
% -- dis_all��ʾ���е�ľ���(n*n)����
[m, n] = size(curve) ;
k_nearest = [ dis_all(:, index), curve(:,1), curve(:,2), (1:1:m)' ] ;
% �Ծ�������ȥ��С��k��
k_nearest = sort(k_nearest, 1) ;
signal = k_nearest(2:k+1, 4) ;
num = 0 ;
for i=1:k
    num = num + get_Reach_dist(index, signal(i,1), k, curve, dis_all) ;
end
lrd = k/(num) ;
end