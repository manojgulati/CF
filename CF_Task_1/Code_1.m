% First comment
Data_1=importdata('C:\Users\manojg\Desktop\ml-100k\ml-100k\u1.base');
Number_of_users=943;
Number_of_movies=1682;
ratings=zeros(Number_of_users,Number_of_movies);
%%%%%ratings vector%%%%%
individual_ratings=Data_1(:,3);
%%%%%movies vector%%%%%
individual_movies=Data_1(:,2);
%%%%%users vector%%%%%
individual_users=Data_1(:,1);

for u=1:Number_of_users
    %%%%%seperate vector to point out movies rates by each user%%%%%
    movies=individual_movies(individual_users==u);
    %%%%%seperate vector to point out ratings for each user%%%%%
    rat=individual_ratings(individual_users==u);
    total_num_movies=size(movies,1);
    for mov_idx=1:total_num_movies
    %%%%%matric having rows as users and columns as movies%%%%%
       ratings(u,movies(mov_idx))=rat(mov_idx);
    end
end
    
save C:\Users\manojg\Desktop\CF_Task\ratings.mat;

