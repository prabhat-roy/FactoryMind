# dispatch-service

Builds the dispatch list per work-center and pushes work to operator stations. Uses Redis
locks to prevent two operators picking up the same work order. Publishes
`mes.workorder.dispatched`.
