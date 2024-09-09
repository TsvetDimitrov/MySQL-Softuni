-- 04. Adding Constraints --

alter table products
add constraint fk_category_id
foreign key (category_id) references categories (id);