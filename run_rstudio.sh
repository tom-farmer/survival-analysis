docker run -d \
	-p 8787:8787 \
	-e DISABLE_AUTH=true \
	--mount type=bind,source="$(pwd)",target=/code \
	--name survival_analysis \
	rocker/tidyverse:4.0.5
