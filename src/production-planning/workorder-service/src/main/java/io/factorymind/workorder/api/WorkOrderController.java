package io.factorymind.workorder.api;

import io.factorymind.workorder.domain.WorkOrder;
import io.factorymind.workorder.repo.WorkOrderRepository;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/v1/work-orders")
public class WorkOrderController {
    private final WorkOrderRepository repo;
    public WorkOrderController(WorkOrderRepository repo) { this.repo = repo; }

    @GetMapping("/{id}")
    public Optional<WorkOrder> get(@PathVariable UUID id) { return repo.findById(id); }
}
