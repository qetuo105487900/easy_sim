include "vlp16_2d_odom.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 2,
}
POSE_GRAPH.optimize_every_n_nodes = 2
TRAJECTORY_BUILDER_2D.max_range = 40.
-- POSE_GRAPH.optimization_problem.local_slam_pose_translation_weight
-- POSE_GRAPH.optimization_problem.local_slam_pose_rotation_weight
-- POSE_GRAPH.optimization_problem.odometry_translation_weight
-- POSE_GRAPH.optimization_problem.odometry_rotation_weight

return options
