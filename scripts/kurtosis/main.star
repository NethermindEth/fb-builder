#Use: kurtosis.exe run  --enclave explorer ./kurtosis/ '{file_to_read=C:\work\builder\builder\scripts\kurtosis\network_params.json}'
eth_pkg = import_module(
    "github.com/kurtosis-tech/ethereum-package/main.star"
)

def run(plan, file_to_read = "network_params.json"):
    inputs = json.decode(read_file(src=file_to_read))
    plan.print(inputs)
    eth_pkg.run(plan, inputs)

