function k_dist = get_K_distance(index, k, dis_all)
% -- index ��ʾ����������
% -- k��ʾ����ڵĸ��� 
% -- curve��ʾ���ߣ���һ�б�ʾ�����꣬�ڶ��б�ʾ������
% -- dis_all��ʾ���е�ľ���(n*n)����
%�����p��k-distance sΪ���������
%sΪn*1�ľ��� pΪ2ά���� kΪ����
temp = dis_all(:, index) ;
temp = sort(temp, 1) ;
k_dist = temp(k+1, 1) ;
end