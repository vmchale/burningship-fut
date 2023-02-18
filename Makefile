burningship.py: burningship.fut
	futhark pyopencl --library $^

burningship.png: export.py burningship.py
	python3 export.py

clean:
	rm -rf __pycache__ burningship.py
