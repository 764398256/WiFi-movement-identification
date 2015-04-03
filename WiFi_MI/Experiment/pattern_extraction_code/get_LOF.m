function lof = get_LOF(index, k, curve, dis_all)
% -- index ��ʾ����������
% -- k��ʾ����ڵĸ��� 
% -- curve��ʾ���ߣ���һ�б�ʾ�����꣬�ڶ��б�ʾ������
% -- dis_all��ʾ���е�ľ���(n*n)����
[m, n] = size(curve) ;
k_nearest = [ dis_all(:,index), (1:1:m)'] ;
% �Ծ�������ȥ��С��k��
k_nearest = sort(k_nearest, 1) ;
signal = k_nearest(2:k+1, 2) ;
num = 0;
for i=1:k
    num = num + get_Lrd(signal(i, 1), k, curve, dis_all) ;
end
lof = num / ( k * get_Lrd(index, k, curve, dis_all)) ;
end