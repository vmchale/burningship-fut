burningship.png: export.py burningship.py
	python3 export.py

burningship.py: burningship.fut
	futhark pyopencl --library $^

clean:
	rm -rf __pycache__ burningship.py
