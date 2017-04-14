DATA_DIR="data"
SMALL_DATASET_DIR="$DATA_DIR/ml-latest-small"
LARGE_DATASET_DIR="$DATA_DIR/ml-latest"

mkdir -p $DATA_DIR

echo ". Downloading movielens-latest-small..."
curl -o "$SMALL_DATASET_DIR.zip" http://files.grouplens.org/datasets/movielens/ml-latest-small.zip
echo ". Downloading movielens-latest..."
curl -o "$LARGE_DATASET_DIR.zip" http://files.grouplens.org/datasets/movielens/ml-latest.zip

echo ". Unzipping data..."
unzip "$SMALL_DATASET_DIR.zip" -d $SMALL_DATASET_DIR
unzip "$LARGE_DATASET_DIR.zip" -d $LARGE_DATASET_DIR
