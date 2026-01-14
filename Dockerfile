FROM runpod/worker-comfyui@sha256:a1c536af752693d1dced4860607ee80a4b287c9b7b371db44fd466b6dc874a77

RUN echo "Base OK"

# Create a single huge deterministic layer (~40–60GB)
RUN dd if=/dev/zero of=/comfyui/big_layer.bin bs=1M count=45000

RUN echo "Done"
