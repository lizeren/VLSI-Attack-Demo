# Makefile to clean unnecessary files

# Define files and directories to be removed during cleanup, excluding .sv and .txt files
CLEAN = \
    .simvision \
    xcelium.d \
    xrun.key \
    xrun.history \
    xrun.log \
    counter8bit.shm \
    innovus.logv	\
	innovus.log	\
	*.v

.PHONY: clean

# Clean target to remove unnecessary files and directories
clean:
	@echo "Cleaning up unnecessary files and directories..."
	rm -rf $(CLEAN)
	@echo "Cleanup complete."
