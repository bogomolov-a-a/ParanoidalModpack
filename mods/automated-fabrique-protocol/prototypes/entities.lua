local train_stop_block = flib.copy_prototype(data.raw["train-stop"]["train-stop"], "train-stop-stop-dispatcher-block-1")

data:extend({
    train_stop_block,

})
