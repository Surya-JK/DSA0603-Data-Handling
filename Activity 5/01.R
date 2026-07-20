# Load required libraries
library(ggplot2)

# Create Dataset
geo_df <- data.frame(
  City = c("Chennai", "Bangalore", "Hyderabad", "Mumbai", "Delhi", "Pune", "Kolkata", "Ahmedabad", "Jaipur", "Kochi"),
  Latitude = c(13.08, 12.97, 17.38, 19.07, 28.61, 18.52, 22.57, 23.02, 26.91, 9.93),
  Longitude = c(80.27, 77.59, 78.48, 72.87, 77.21, 73.85, 88.36, 72.57, 75.79, 76.26),
  Population = c(11, 13, 10, 20, 32, 7, 15, 8, 4, 2)
)
# Q1: Scatter Map using Longitude and Latitude
ggplot(geo_df, aes(x = Longitude, y = Latitude)) +
  geom_point(color = "navy", size = 3) +
  theme_minimal() +
  labs(title = "City Geographic Locations", x = "Longitude", y = "Latitude")
# Q2: Bubble Map with size mapped to Population
ggplot(geo_df, aes(x = Longitude, y = Latitude, size = Population)) +
  geom_point(alpha = 0.6, color = "darkblue") +
  scale_size_continuous(range = c(3, 12)) +
  theme_minimal() +
  labs(title = "Bubble Map of Indian Cities by Population", x = "Longitude", y = "Latitude", size = "Population (M)")
# Q3: Labeled City Scatter Map
ggplot(geo_df, aes(x = Longitude, y = Latitude)) +
  geom_point(color = "red", size = 3) +
  geom_text(aes(label = City), vjust = -0.8, fontface = "bold", size = 3.5) +
  theme_minimal() +
  labs(title = "City Locations with Labels", x = "Longitude", y = "Latitude")
# Q4: Geospatial Bubble Map with Color Scale & Labels
ggplot(geo_df, aes(x = Longitude, y = Latitude, size = Population, color = Population)) +
  geom_point(alpha = 0.8) +
  geom_text(aes(label = City), vjust = -1, color = "black", size = 3.5) +
  scale_color_gradient(low = "skyblue", high = "darkred") +
  scale_size_continuous(range = c(3, 10)) +
  theme_minimal() +
  labs(title = "Geospatial Data Visualization of Cities",
       x = "Longitude", y = "Latitude",
       size = "Population (M)", color = "Population (M)")
