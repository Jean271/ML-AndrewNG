A=[1;2;3;4;5;6;7;8;9;10];
y_labeled=zeros(size(y,1),num_labels);
for j=1:num_labels
    for i=1:size(y,1)
        y_labeled(i,j)=(y(i,1)== j);    
    end
end