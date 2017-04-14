DATA_DIR="data"
SMALL_DATASET_PATH="$DATA_DIR/ml-latest-small.zip"
LARGE_DATASET_PATH="$DATA_DIR/ml-latest.zip"

mkdir -p $DATA_DIR

echo ". Downloading movielens-latest-small..."
curl -o $SMALL_DATASET_PATH http://files.grouplens.org/datasets/movielens/ml-latest-small.zip
echo ". Downloading movielens-latest..."
curl -o $LARGE_DATASET_PATH http://files.grouplens.org/datasets/movielens/ml-latest.zip

echo ". Unzipping data..."
unzip $SMALL_DATASET_PATH -d $DATA_DIR
unzip $LARGE_DATASET_PATH -d $DATA_DIR
