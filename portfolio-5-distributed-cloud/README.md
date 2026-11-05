Portfolio 5: Distributed and cloud database exercise for an event planning business.
KnH's MongoDB cluster is hosted on AWS in Paris with three nodes, as shown in my Atlas screenshot. Since KnH operates in Nigeria, this distance could add some latency to database requests. For a real business, I would consider a region closer to Nigeria, depending on the available Atlas options.

The cluster uses a Replica Set, which usually means there is one primary node and two secondary nodes. The primary handles all the writes, and the secondaries keep copies of the data. If the primary goes down, the secondaries can choose a new primary so the database stays available.

My cluster does not use sharding. Sharding spreads data across several servers to handle bigger workloads. KnH does not need this now as a small business, but it might be helpful if the business grows and needs to manage thousands of events in different cities.

By default, MongoDB reads from the primary, so users get the most recent data. But if you read from a secondary, you might see old information. For example, a venue could look available because a recent booking has not been copied to that secondary yet, which could lead to double-booking.

Replication is different from backup. If something is deleted by mistake, that change will be copied to all three nodes. My Atlas screenshot shows that backups are currently off. For a real business, I would turn on regular backups and make sure deleted data can be restored.
