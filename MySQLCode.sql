WITH tempTable AS (
    SELECT
        COUNT(DISTINCT CustomerID) CustomersCount,
        SUM(Transaction) SaleAmount,
        COUNT(DISTINCT SellerID) SellersCount,
        COUNT(DISTINCT OrderID) OrdersCount
    FROM DataSource
)
SELECT CustomersCount, SaleAmount/CustomersCount TranPerCust,
       SaleAmount, SaleAmount/OrdersCount TranPerOrder,
       SellersCount
from tempTable