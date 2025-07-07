use zepto;

select count(*) from zepto;

-- --sample data
select * from zepto limit 10;

alter table zepto rename column ï»¿Category to Category;

select * from zepto
where category is null 
or name is null
or mrp is null
or discountPercent is null
or availableQuantity is null
or discountedSellingPrice is null
or weightInGms is null
or outOfStock is null
or quantity is null;

-- different product categories

select distinct category from zepto order by category;

-- product in stock vs out of stock

select outOfStock, count(outOfStock) from zepto group by outOfstock;

-- Data cleaning

select * from zepto where mrp=0 or discountedSellingPrice=0;

delete from zepto where mrp=0;

-- convert paise to rupee

update zepto set mrp=mrp/100.0,
discountedSellingPrice=discountedSellingPrice/100.0;

select mrp,discountedSellingPrice from zepto;

-- Top 10 best-value products based on the discount percentage;

select distinct name,mrp,discountPercent from zepto
order by discountPercent desc limit 10;

-- Estimated Revenue for each category

select category,sum(discountedSellingPrice*availableQuantity) as total_revenue from zepto 
group by category order by total_revenue;

-- Products where MRP is greater than 500 and discount is less than 10%

select distinct name,mrp,discountPercent from zepto
where mrp>500 and discountPercent<10
order by mrp desc, discountPercent desc;

-- Top 5 categories offering the highest average discount percentage

select category,
round(avg(discountPercent),2) as avg_discount from zepto
group by category 
order by avg_discount desc limit 5;

-- Grouping the products into categories like low,medium,bulk

select distinct name, weightInGms,
case when weightInGms <1000 then 'Low' 
when weightInGms <5000 then 'Medium'
else 'Bulk'
end as weight_category from zepto;

-- Total inventory weight per category

select category,
sum(weightInGms*availableQuantity) as total_weight from zepto
group by category order by total_weight;