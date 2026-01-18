
/* PROJECT : BUSINESS INTELLIGENCE ANALYSIS FOR A QUICK-COMMERCE RETAIL PLATFORM

Author: Rahul Khandare

*/;


use zepto_project;
select * from zepto



/*                                          DATA EXPLORATION                               */;



select count(*) from zepto;

/*    Sample data    */; 

Select * from zepto 
limit 10;

/* null values */ ; 

select * from zepto 
where Category is null 
or 
 name is null
 or 
 MRP is null
 or 
 Discountpercent is null
 or 
 availablequantity is null
 or 
 discountedsellingprice is null
 or 
 weightinGms is null
 or 
 outofstock is null
 or 
 quantity is null;
 
 /*     Different product categories     */;
 
 Select distinct category from zepto;
 
 /*     Count of Stock outs     */;
 
 Select outofstock, count(*) from zepto
 group by outofstock;
 
 /*      Products listed multiple times     */
 
 Select name, count(*) From zepto
 group by name
 having count(*) > 1 
 order by count(*) desc;
 
 
 
 /*                                          DATA CLEANING                                            */
 
 
 
 /*   Products with Price as 0   */
 
 Select * from Zepto 
 where MRP = 0 or discountedsellingprice = 0;
 
 Delete from zepto
 where mrp = 0;
 
 /* Converting Paise into Rupees   */;
 
 Update zepto
 set mrp = mrp/100.0 , 
discountedsellingprice = discountedsellingprice/100.0;

  select name, discountedsellingprice, mrp from zepto;
  
  
  
  /*                                       DATA ANALYSIS AND INSIGHTS                              */   
  
  /*   Finding the Top 10 best-value products based on the discount percentage */
  
  
 
 select distinct name, mrp, discountpercent from zepto
 order by discountpercent desc
 limit 10; 
 
  /* Finding products with High MRP but Out of stock  */ 
  
  select distinct name, mrp, discountpercent, outofstock from zepto
  where outofstock="True"
  order by discountpercent
  limit 10;
  
  
  select distinct name, mrp, discountpercent, outofstock from zepto
  where outofstock="True" 
  and mrp>275
  order by discountpercent
  limit 5;
  
  /* COMMENTS:   1. DEMONSTRATES THAT DISCOUNTING IS NOT A PREREQUISITE FOR CUSTOMER DEMAND IN CERTAIN HIGH-MRP PRODUCTS.
				 2. ZEPTO CAN INCREASE THEIR MARGIN ON THESE PRODUCTS.
				*/
       

 /* Finding Estimated revenue for each category  */ 
 
 
 
 select distinct category, sum(discountedsellingprice * availablequantity) as Estimated_Revenue
 From Zepto
 group by category
 order by Estimated_revenue desc;
 
 
select distinct category, sum(discountedsellingprice * availablequantity) as Estimated_Revenue
 From Zepto
 group by category
 order by Estimated_revenue desc
 limit 5;
 
 
 /*   FInding products with an MRP higher than Rs.500 and discount under 10% */ 
 
 
 
 select name, mrp, discountpercent from zepto 
 where mrp > 500 and discountpercent<10 
 order by mrp desc, discountpercent desc;
 
 
 
 /*  Which product categories offer the highest average discount percentage  */ 
 
 
 
 select category, round( avg(discountpercent),2) as Average_discount from zepto 
 group by category
 order by avg(discountpercent) desc
 limit 5;
 
 
 
 /* COMMENT :             1. FRUITS AND VEGETABLES CATEGORY CONTRIBUTES THE LEAST TO TOTAL ESTIMATED REVENUE ALSO HAVING THE HIGHEST AVERAGE DISCOUNT PERCENT 
						  2. HIGH DISCOUNTING IN THIS CATEGORY MAY BE DRIVEN BY PERISHABILITY AND INVENTORY CLEARANCE NEEDS RATHER THAN REVENUE GROWTH OBJECTIVES.
						  3. PROPER INVENTORY MANAGEMENT IS SUGGESTED. 
                          */
                          
 /*     Grouping the products in categories : Low, Medium, Bulk  */ 
 
 select name, weightingms,
 Case when weightingms < 1000 then "Low" 
when weightingms < 5000 then "Medium" 
 else "bulk" end as Weight_cateogory
  from zepto
  order by Weightingms desc;

/*  Finding the total inventory weight per category in kgs */ 


select distinct category, sum(weightingms * availablequantity) as Total_inventory_weightinkgs from zepto 
group by category
order by Total_inventory_weightinkgs desc;
 

/* How many products are there per category */ 

select distinct category, count(name) as No_of_Items from zepto 
group by category 
order by count(name) desc; 

 
 /*                      END OF SQL ANALYSIS: ALL QUERIES ABOVE WERE EXECUTED TO DERIVE BUSINESS INSIGHTS FROM THE DATASET.     */     
 