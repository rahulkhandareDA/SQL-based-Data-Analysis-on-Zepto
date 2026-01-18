
# SQL-BASED BUSINESS INTELLIGENCE ANALYSIS FOR A QUICK COMMERCE PLATFORM







## Project Background

Zepto is a quick-commerce grocery delivery platform operating in the Indian retail and FMCG space, focused on delivering daily essentials within minutes. The company operates on a high-velocity, low-margin business model where pricing strategy, inventory availability, and category performance play a critical role in profitability and customer retention.

From a data analyst’s perspective within Zepto, the primary objective is to leverage product-level data to understand revenue drivers, evaluate discount effectiveness, identify inventory gaps, and support data-driven decision-making across pricing, procurement, and category strategy.

This project analyzes a structured product dataset to simulate real-world business intelligence challenges faced by quick-commerce platforms.
## Scope Of Analysis

Insights and recommendations are provided across the following key areas:

1 . Category Performance & Revenue Contribution

2 . Pricing & Discount Effectiveness

3 . Inventory Availability & Stockout Analysis

4 . Margin Optimization Opportunities

The SQL queries used to inspect and clean the data for this analysis can be found here 

Targeted SQL queries addressing specific business questions can be found here:
[link to analysis SQL file]


## Data Structure 

The primary dataset consists of a single product-level table containing pricing, discount, inventory, and category information, with a total row count representing Zepto’s active product catalog.

Table Description: zepto

category – Product category (String)

name – Product name (String)

MRP – Maximum Retail Price (INT)

discountPercent – Discount applied on the product (INT)

discountedSellingPrice – Final selling price after discount(INT)

availableQuantity – Units available (INT)

outOfStock – Stock availability flag (Boolean)

quantity – Proxy for demand / units sold (INT)

Initial data checks were conducted to validate data consistency, identify null values, and ensure correct data types before performing analysis.

## Useful Links

The SQL queries used to inspect and clean the data for this analysis can be found here

Targeted SQL queries addressing specific business questions can be found here: [link to analysis SQL file]


## Executive Summary

This project analyzes Zepto’s product-level data to evaluate category performance, pricing effectiveness, and inventory availability within a quick-commerce retail context. The analysis identifies cooking essentials and munchies as the primary revenue-driving categories due to consistent, high-frequency demand, while premium high-MRP products demonstrate strong price-inelastic demand even without discounting, highlighting clear margin optimization opportunities. In contrast, fruits and vegetables contribute the least to total revenue despite exhibiting the highest average discount levels, indicating margin erosion driven by perishability rather than demand stimulation. Additionally, recurring stockouts in high-value products reveal gaps in demand forecasting and replenishment prioritization, resulting in missed revenue potential. Overall, the findings support targeted pricing optimization, inventory prioritization for high-impact SKUs, and category-specific discount strategies to improve unit economics and profitability.

## Insights Deep Dive

### **_Category Performance & Revenue Contribution_**

1 ) Cooking essentials and munchies collectively contribute the highest share of total estimated revenue, driven by high purchase frequency and consistent demand.

2 ) These categories show lower revenue volatility, making them critical baseline revenue drivers for the platform.

3 ) Fruits and vegetables contribute the lowest share of total estimated revenue, despite exhibiting the highest average discount percentage across all categories.

4 ) The combination of high discounting and low revenue contribution indicates margin compression without proportional volume uplift.

### **_Pricing & Discount Strategy Analysis_**

1 ) Multiple high-MRP SKUs (above category average MRP) were observed to be out of stock at 0% discount, signaling strong price inelastic demand.

2 ) Premium products demonstrate discount independence, suggesting discounting in these segments may unnecessarily erode gross margins.

3 ) Categories with aggressive discounting do not consistently translate into higher revenue, highlighting diminishing marginal returns on discount spend.

4 ) Discount effectiveness varies significantly by category, reinforcing the need for category-level pricing strategies instead of uniform promotions.

### **_Inventory & Stock Availability Analysis_**

1 ) A disproportionate number of stockouts occur in high-value SKUs, directly impacting potential revenue realization.

2 ) Stockouts in premium products indicate demand forecasting inaccuracies and suboptimal replenishment prioritization.

3 ) Revenue-critical categories experience higher opportunity cost per stockout compared to low-MRP categories.

4 ) Improving fill rates for high-MRP, high-demand SKUs can yield immediate revenue and margin recovery.

### **_Margin Optimization Opportunities_**

1 ) Premium SKUs with stable demand and minimal reliance on discounts present clear gross margin expansion opportunities.

2 ) Reducing discount depth on price-inelastic products can increase contribution margin without impacting demand.

3 ) High-discount, low-revenue categories (e.g., fruits and vegetables) require operational efficiency improvements rather than promotional intensity.

4 ) Strategic alignment of pricing, discounting, and inventory allocation can materially improve unit economics and overall profitability.


## Recommendations

Based on the analysis, the following actions are recommended:

1 ) Prioritize inventory replenishment for high-MRP, high-demand products to prevent revenue loss

2 ) Reduce aggressive discounting in fruits and vegetables and focus on supply-chain efficiency

3 ) Maintain strong stock availability in cooking essentials and munchies to protect core revenue

4 ) Use category-specific discount strategies instead of blanket promotions

5 ) Leverage premium SKUs for margin optimization rather than volume-based discounting
## Assumptions & Caveats

1 ) Revenue and demand are estimated using available pricing and quantity fields due to the absence of transaction-level sales data

2 ) Discount impact is analyzed descriptively and does not account for external demand drivers

3 ) Stock availability is treated as a point-in-time snapshot rather than a time-series trend

4 ) Customer-level behavior is inferred using product-level proxies
## Conclusion

The analysis uncovers clear differences in revenue contribution, pricing sensitivity, and inventory effectiveness across product categories within the quick-commerce platform. 

It identifies cooking essentials and munchies as the primary revenue drivers, while revealing that premium, high-MRP products exhibit strong price-inelastic demand despite zero discounting, presenting clear margin expansion opportunities. 

It also highlights that aggressive discounting in fruits and vegetables leads to margin compression without proportional revenue uplift, indicating inefficient discount spend. Additionally, recurring stockouts in high-value SKUs expose demand forecasting and replenishment gaps that result in direct revenue loss. Collectively, these findings support targeted pricing optimization, inventory prioritization for high-impact SKUs, and category-specific discount strategies to improve overall unit economics and profitability.

