CREATE TABLE work_orders (
    id UUID PRIMARY KEY,
    order_number TEXT UNIQUE NOT NULL,
    material_id TEXT NOT NULL,
    planned_quantity NUMERIC(18,4) NOT NULL,
    completed_quantity NUMERIC(18,4) NOT NULL DEFAULT 0,
    work_center_id TEXT NOT NULL,
    status TEXT NOT NULL,
    planned_start TIMESTAMPTZ,
    planned_end TIMESTAMPTZ,
    actual_start TIMESTAMPTZ,
    actual_end TIMESTAMPTZ,
    routing_id TEXT,
    bom_id TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_workorders_status ON work_orders(status);
CREATE INDEX idx_workorders_workcenter ON work_orders(work_center_id);
