package io.factorymind.workorder.domain;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.UUID;

@Entity
@Table(name = "work_orders")
public class WorkOrder {
    @Id @GeneratedValue
    private UUID id;
    @Column(unique = true, nullable = false)
    private String orderNumber;
    private String materialId;
    private BigDecimal plannedQuantity;
    private BigDecimal completedQuantity;
    private String workCenterId;
    @Enumerated(EnumType.STRING) private WorkOrderStatus status;
    private OffsetDateTime plannedStart;
    private OffsetDateTime plannedEnd;
    private OffsetDateTime actualStart;
    private OffsetDateTime actualEnd;
    private String routingId;
    private String bomId;

    public UUID getId() { return id; }
    public String getOrderNumber() { return orderNumber; }
    public WorkOrderStatus getStatus() { return status; }
    public void setStatus(WorkOrderStatus s) { this.status = s; }
}
