import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  cacheComponents: true,
  experimental: {
    // Runs the React Compiler inside Turbopack instead of Babel.
    turbopackRustReactCompiler: true,
  },
  partialPrefetching: true,
  reactCompiler: true,
};

export default nextConfig;
